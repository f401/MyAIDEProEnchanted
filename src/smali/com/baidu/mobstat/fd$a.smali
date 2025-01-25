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
    .registers 5

    .line 1890
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    and-int/lit8 p1, p2, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1891
    :goto_c
    iput-boolean p1, p0, Lcom/baidu/mobstat/fd$a;->f:Z

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 1892
    :goto_14
    iput-boolean v1, p0, Lcom/baidu/mobstat/fd$a;->a:Z

    const/4 p1, 0x4

    if-eqz v1, :cond_1b

    const/4 v1, 0x3

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x4

    .line 1893
    :goto_1c
    iput v1, p0, Lcom/baidu/mobstat/fd$a;->d:I

    .line 1894
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    .line 1895
    iput v0, p0, Lcom/baidu/mobstat/fd$a;->b:I

    .line 1896
    iput v0, p0, Lcom/baidu/mobstat/fd$a;->e:I

    .line 1897
    iput-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->h:Z

    .line 1898
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/baidu/mobstat/fd$a;->g:[B

    .line 1899
    iput p2, p0, Lcom/baidu/mobstat/fd$a;->i:I

    .line 1900
    invoke-static {p2}, Lcom/baidu/mobstat/fd;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/fd$a;->j:[B

    return-void
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

    if-lez v0, :cond_25

    .line 1995
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->a:Z

    if-eqz v0, :cond_1d

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

    goto :goto_25

    .line 2000
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_25
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2015
    invoke-virtual {p0}, Lcom/baidu/mobstat/fd$a;->a()V

    .line 2019
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    .line 2022
    iput-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public write(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1920
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->h:Z

    if-eqz v0, :cond_a

    .line 1921
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 1926
    :cond_a
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 1927
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    iget v2, p0, Lcom/baidu/mobstat/fd$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/baidu/mobstat/fd$a;->b:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 1928
    iget p1, p0, Lcom/baidu/mobstat/fd$a;->d:I

    if-lt v3, p1, :cond_75

    .line 1930
    iget-object p1, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->g:[B

    iget-object v2, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    iget v3, p0, Lcom/baidu/mobstat/fd$a;->d:I

    iget v4, p0, Lcom/baidu/mobstat/fd$a;->i:I

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/mobstat/fd;->a([B[BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1932
    iget p1, p0, Lcom/baidu/mobstat/fd$a;->e:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/mobstat/fd$a;->e:I

    .line 1933
    iget-boolean v0, p0, Lcom/baidu/mobstat/fd$a;->f:Z

    if-eqz v0, :cond_46

    const/16 v0, 0x4c

    if-lt p1, v0, :cond_46

    .line 1934
    iget-object p1, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1935
    iput v1, p0, Lcom/baidu/mobstat/fd$a;->e:I

    .line 1938
    :cond_46
    iput v1, p0, Lcom/baidu/mobstat/fd$a;->b:I

    goto :goto_75

    .line 1945
    :cond_49
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->j:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v0, v0, v2

    const/4 v2, -0x5

    if-le v0, v2, :cond_73

    .line 1946
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->c:[B

    iget v2, p0, Lcom/baidu/mobstat/fd$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/baidu/mobstat/fd$a;->b:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 1947
    iget p1, p0, Lcom/baidu/mobstat/fd$a;->d:I

    if-lt v3, p1, :cond_75

    .line 1949
    iget-object p1, p0, Lcom/baidu/mobstat/fd$a;->g:[B

    iget v2, p0, Lcom/baidu/mobstat/fd$a;->i:I

    invoke-static {v0, v1, p1, v1, v2}, Lcom/baidu/mobstat/fd;->a([BI[BII)I

    move-result p1

    .line 1950
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/baidu/mobstat/fd$a;->g:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 1951
    iput v1, p0, Lcom/baidu/mobstat/fd$a;->b:I

    goto :goto_75

    :cond_73
    if-ne v0, v2, :cond_76

    :cond_75
    :goto_75
    return-void

    .line 1955
    :cond_76
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid character in Base64 data."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_a

    .line 1976
    iget-object v0, p0, Lcom/baidu/mobstat/fd$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_17

    .line 1981
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/fd$a;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method
