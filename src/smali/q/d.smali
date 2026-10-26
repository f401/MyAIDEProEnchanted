.class public final Lq/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:C

.field public d:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lq/d;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lq/d;->b:I

    iput-char p2, p0, Lq/d;->c:C

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 2

    iget v0, p0, Lq/d;->b:I

    iget-object v1, p0, Lq/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lq/d;->b:I

    iget-object v1, p0, Lq/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lq/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v1, v2

    move v3, v2

    :goto_1
    iget-object v4, p0, Lq/d;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_4

    iget-object v4, p0, Lq/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_1

    xor-int/lit8 v3, v3, 0x1

    :cond_1
    iget-object v1, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_1

    if-nez v3, :cond_1

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    iget-object v1, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    iget-char v5, p0, Lq/d;->c:C

    if-ne v4, v5, :cond_5

    :cond_4
    iput v0, p0, Lq/d;->b:I

    iget-object v0, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
