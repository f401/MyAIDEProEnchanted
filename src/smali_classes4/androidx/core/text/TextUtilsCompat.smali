.class public final Landroidx/core/text/TextUtilsCompat;
.super Ljava/lang/Object;


# static fields
.field private static final ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = "Arab"

.field private static final HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = "Hebr"

.field private static final ROOT:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    if-eq v2, v1, :cond_14

    const/4 v3, 0x2

    if-eq v2, v3, :cond_14

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    if-eqz p0, :cond_32

    sget-object v0, Landroidx/core/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p0}, Landroidx/core/text/ICUCompat;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-static {p0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v0

    goto :goto_a

    :cond_20
    const-string v1, "Arab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "Hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    goto :goto_a

    :cond_32
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_53

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4d

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_47

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_41

    const/16 v3, 0x26

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x27

    if-eq v2, v3, :cond_35

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_35
    const-string v2, "&#39;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_3b
    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_41
    const-string v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_47
    const-string v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_4d
    const-string v2, "&quot;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
