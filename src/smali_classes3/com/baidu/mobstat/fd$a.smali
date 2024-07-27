.class public Lcom/baidu/mobstat/fd$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:[B

.field private h:Z

.field private i:I

.field private j:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 7

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1890
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1891
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->f:Z

    .line 1892
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/baidu/mobstat/fd$a;->a:Z

    .line 1893
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/baidu/mobstat/fd$a;->d:I

    .line 1894
    iget v0, p0, Lcom/baidu/mobstat/fd$a;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    .line 1895
    iput v2, p0, Lcom/baidu/mobstat/fd$a;->b:I

    .line 1896
    iput v2, p0, Lcom/baidu/mobstat/fd$a;->e:I

    .line 1897
    iput-boolean v2, p0, Lcom/baidu/mobstat/fd$a;->h:Z

    .line 1898
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/baidu/mobstat/fd$a;->g:[B

    .line 1899
    iput p2, p0, Lcom/baidu/mobstat/fd$a;->i:I

    .line 1900
    invoke-static {p2}, Lcom/baidu/mobstat/fd;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fd$a;->j:[B

    .line 1901
    return-void

    :cond_0
    move v0, v2

    .line 1891
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1892
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1893
    goto :goto_2
.end method


# virtual methods
.method public a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1994
    iget v0, p0, Lcom/baidu/mobstat/fd$a;->b:I

    if-lez v0, :cond_0

    .line 1995
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->a:Z

    if-eqz v0, :cond_1

    .line 1996
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/baidu/mobstat/fd$a;->g:[B

    iget-object v2, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    iget v3, p0, Lcom/baidu/mobstat/fd$a;->b:I

    iget v4, p0, Lcom/baidu/mobstat/fd$a;->i:I

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/mobstat/fd;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1997
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/fd$a;->b:I

    .line 2004
    :cond_0
    return-void

    .line 2000
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2015
    invoke-virtual {p0}, Lcom/baidu/mobstat/fd$a;->a()V

    .line 2019
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2021
    iput-object v0, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    .line 2022
    iput-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    .line 2023
    return-void
.end method

.method public write(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x5

    const/4 v5, 0x0

    .line 1920
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->h:Z

    if-eqz v0, :cond_1

    .line 1921
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1958
    :cond_0
    :goto_0
    return-void

    .line 1926
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->a:Z

    if-eqz v0, :cond_3

    .line 1927
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    iget v1, p0, Lcom/baidu/mobstat/fd$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/mobstat/fd$a;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1928
    iget v0, p0, Lcom/baidu/mobstat/fd$a;->b:I

    iget v1, p0, Lcom/baidu/mobstat/fd$a;->d:I

    if-lt v0, v1, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/baidu/mobstat/fd$a;->g:[B

    iget-object v2, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    iget v3, p0, Lcom/baidu/mobstat/fd$a;->d:I

    iget v4, p0, Lcom/baidu/mobstat/fd$a;->i:I

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/mobstat/fd;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1932
    iget v0, p0, Lcom/baidu/mobstat/fd$a;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/mobstat/fd$a;->e:I

    .line 1933
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/baidu/mobstat/fd$a;->e:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_2

    .line 1934
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1935
    iput v5, p0, Lcom/baidu/mobstat/fd$a;->e:I

    .line 1938
    :cond_2
    iput v5, p0, Lcom/baidu/mobstat/fd$a;->b:I

    goto :goto_0

    .line 1945
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_4

    .line 1946
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    iget v1, p0, Lcom/baidu/mobstat/fd$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/mobstat/fd$a;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1947
    iget v0, p0, Lcom/baidu/mobstat/fd$a;->b:I

    iget v1, p0, Lcom/baidu/mobstat/fd$a;->d:I

    if-lt v0, v1, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    iget-object v1, p0, Lcom/baidu/mobstat/fd$a;->g:[B

    iget v2, p0, Lcom/baidu/mobstat/fd$a;->i:I

    invoke-static {v0, v5, v1, v5, v2}, Lcom/baidu/mobstat/fd;->a([BI[BII)I

    move-result v0

    .line 1950
    iget-object v1, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/baidu/mobstat/fd$a;->g:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1951
    iput v5, p0, Lcom/baidu/mobstat/fd$a;->b:I

    goto :goto_0

    .line 1954
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 1955
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1975
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->h:Z

    if-eqz v0, :cond_1

    .line 1976
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1984
    :cond_0
    return-void

    .line 1980
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 1981
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/fd$a;->write(I)V

    .line 1980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
