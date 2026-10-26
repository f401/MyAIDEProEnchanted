.class public Lcom/s1243808733/util/XMLEscape;
.super Lcom/s1243808733/util/EscapeUtils;
.source "XMLEscape.java"


# instance fields
.field escapes:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    invoke-direct {p0}, Lcom/s1243808733/util/EscapeUtils;-><init>()V

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "&"

    aput-object v2, v1, v4

    const-string v2, "&amp;"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "<"

    aput-object v2, v1, v4

    const-string v2, "&lt;"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ">"

    aput-object v2, v1, v4

    const-string v2, "&gt;"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\""

    aput-object v3, v2, v4

    const-string v3, "&quot;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\'"

    aput-object v3, v2, v4

    const-string v3, "&apos;"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 18
    aget-object v2, v2, v0

    aget-object v3, v2, v1

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public unEscapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 26
    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    aget-object v2, v2, v1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
