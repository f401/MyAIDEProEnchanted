.class public Lsun/misc/ASCIICaseInsensitiveComparator;
.super Ljava/lang/Object;
.source "ASCIICaseInsensitiveComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lsun/misc/ASCIICaseInsensitiveComparator;

    invoke-direct {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;-><init>()V

    sput-object v0, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isLower(I)Z
    .registers 3

    .line 85
    add-int/lit8 v0, p0, -0x61

    rsub-int/lit8 v1, p0, 0x7a

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isUpper(I)Z
    .registers 3

    .line 89
    add-int/lit8 v0, p0, -0x41

    rsub-int/lit8 v1, p0, 0x5a

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lowerCaseHashCode(Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 76
    :goto_0
    if-ge v2, v3, :cond_0

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 80
    :cond_0
    return v0
.end method

.method static toLower(I)I
    .registers 2

    .line 93
    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isUpper(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    :cond_0
    return p0
.end method

.method static toUpper(I)I
    .registers 2

    .line 97
    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isLower(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x20

    :cond_0
    return p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 36
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lsun/misc/ASCIICaseInsensitiveComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 42
    if-ge v1, v2, :cond_0

    move v0, v1

    .line 43
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 45
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 46
    if-eq v4, v5, :cond_1

    .line 48
    invoke-static {v4}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v4

    int-to-char v4, v4

    .line 49
    invoke-static {v5}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v5

    int-to-char v5, v5

    .line 50
    if-eq v4, v5, :cond_1

    .line 51
    sub-int v0, v4, v5

    .line 55
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    :cond_2
    sub-int v0, v1, v2

    goto :goto_2
.end method
