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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lq/d;->a:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lq/d;->b:I

    iput-char p2, p0, Lq/d;->c:C

    return-void
.end method


# virtual methods
.method public final e()Z
    .registers 3

    iget v0, p0, Lq/d;->b:I

    iget-object v1, p0, Lq/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 8

    iget v0, p0, Lq/d;->b:I

    iget-object v1, p0, Lq/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    iget v0, p0, Lq/d;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_18
    iget-object v5, p0, Lq/d;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_53

    iget-object v5, p0, Lq/d;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2f

    if-nez v4, :cond_4a

    xor-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_2f
    if-nez v4, :cond_4a

    if-eqz v2, :cond_34

    goto :goto_4a

    :cond_34
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_3f

    iget-object v4, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    goto :goto_50

    :cond_3f
    iget-char v6, p0, Lq/d;->c:C

    if-ne v5, v6, :cond_44

    goto :goto_53

    :cond_44
    iget-object v6, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_50

    :cond_4a
    :goto_4a
    iget-object v4, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_53
    :goto_53
    iput v0, p0, Lq/d;->b:I

    iget-object v0, p0, Lq/d;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
