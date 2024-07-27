.class public Lcom/s1243808733/util/XMLEscape;
.super Lcom/s1243808733/util/EscapeUtils;
.source "XMLEscape.java"


# instance fields
.field escapes:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-direct {p0}, Lcom/s1243808733/util/EscapeUtils;-><init>()V

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\""

    aput-object v1, v0, v4

    const-string v1, "&quot;"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "&"

    aput-object v3, v2, v4

    const-string v3, "&amp;"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "<"

    aput-object v3, v2, v4

    const-string v3, "&lt;"

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ">"

    aput-object v3, v2, v4

    const-string v3, "&gt;"

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\'"

    aput-object v3, v2, v4

    const-string v3, "&apos;"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 20
    return-object p1

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unEscapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 28
    return-object p1

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
