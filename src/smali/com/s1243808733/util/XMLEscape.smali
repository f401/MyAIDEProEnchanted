.class public Lcom/s1243808733/util/XMLEscape;
.super Lcom/s1243808733/util/EscapeUtils;
.source "XMLEscape.java"


# instance fields
.field escapes:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 4
    invoke-direct {p0}, Lcom/s1243808733/util/EscapeUtils;-><init>()V

    .line 6
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "&"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "&amp;"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v5, ">"

    aput-object v5, v2, v3

    const-string v5, "&gt;"

    aput-object v5, v2, v4

    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "\'"

    aput-object v6, v5, v3

    const-string v6, "&apos;"

    aput-object v6, v5, v4

    const/4 v6, 0x5

    new-array v6, v6, [[Ljava/lang/String;

    aput-object v1, v6, v3

    new-array v1, v0, [Ljava/lang/String;

    const-string v7, "<"

    aput-object v7, v1, v3

    const-string v7, "&lt;"

    aput-object v7, v1, v4

    aput-object v1, v6, v4

    aput-object v2, v6, v0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\""

    aput-object v1, v0, v3

    const-string v1, "&quot;"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    aput-object v0, v6, v1

    const/4 v0, 0x4

    aput-object v5, v6, v0

    iput-object v6, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_15

    .line 18
    aget-object v2, v2, v1

    aget-object v3, v2, v0

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-object p1
.end method

.method public unEscapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/util/XMLEscape;->escapes:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_15

    .line 26
    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget-object v3, v2, v3

    aget-object v2, v2, v0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-object p1
.end method
