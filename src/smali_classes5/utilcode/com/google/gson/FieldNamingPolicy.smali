.class public abstract enum Lutilcode/com/google/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;

# interfaces
.implements Lutilcode/com/google/gson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lutilcode/com/google/gson/FieldNamingPolicy;",
        ">;",
        "Lutilcode/com/google/gson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lutilcode/com/google/gson/FieldNamingPolicy;

.field public static final enum IDENTITY:Lutilcode/com/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lutilcode/com/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DOTS:Lutilcode/com/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lutilcode/com/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lutilcode/com/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lutilcode/com/google/gson/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lutilcode/com/google/gson/FieldNamingPolicy$1;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v3}, Lutilcode/com/google/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/FieldNamingPolicy;->IDENTITY:Lutilcode/com/google/gson/FieldNamingPolicy;

    new-instance v0, Lutilcode/com/google/gson/FieldNamingPolicy$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1, v4}, Lutilcode/com/google/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lutilcode/com/google/gson/FieldNamingPolicy;

    new-instance v0, Lutilcode/com/google/gson/FieldNamingPolicy$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1, v5}, Lutilcode/com/google/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lutilcode/com/google/gson/FieldNamingPolicy;

    new-instance v0, Lutilcode/com/google/gson/FieldNamingPolicy$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1, v6}, Lutilcode/com/google/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lutilcode/com/google/gson/FieldNamingPolicy;

    new-instance v0, Lutilcode/com/google/gson/FieldNamingPolicy$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1, v7}, Lutilcode/com/google/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lutilcode/com/google/gson/FieldNamingPolicy;

    new-instance v0, Lutilcode/com/google/gson/FieldNamingPolicy$6;

    const-string v1, "LOWER_CASE_WITH_DOTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lutilcode/com/google/gson/FieldNamingPolicy$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DOTS:Lutilcode/com/google/gson/FieldNamingPolicy;

    const/4 v1, 0x6

    new-array v1, v1, [Lutilcode/com/google/gson/FieldNamingPolicy;

    sget-object v2, Lutilcode/com/google/gson/FieldNamingPolicy;->IDENTITY:Lutilcode/com/google/gson/FieldNamingPolicy;

    aput-object v2, v1, v3

    sget-object v2, Lutilcode/com/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lutilcode/com/google/gson/FieldNamingPolicy;

    aput-object v2, v1, v4

    sget-object v2, Lutilcode/com/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lutilcode/com/google/gson/FieldNamingPolicy;

    aput-object v2, v1, v5

    sget-object v2, Lutilcode/com/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lutilcode/com/google/gson/FieldNamingPolicy;

    aput-object v2, v1, v6

    sget-object v2, Lutilcode/com/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lutilcode/com/google/gson/FieldNamingPolicy;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lutilcode/com/google/gson/FieldNamingPolicy;->$VALUES:[Lutilcode/com/google/gson/FieldNamingPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILutilcode/com/google/gson/FieldNamingPolicy$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lutilcode/com/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static modifyString(CLjava/lang/String;I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_25

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_e
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_18

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_18
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, p0, v0}, Lutilcode/com/google/gson/FieldNamingPolicy;->modifyString(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2f
    return-object p0

    :cond_30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_e
.end method

.method public static valueOf(Ljava/lang/String;)Lutilcode/com/google/gson/FieldNamingPolicy;
    .registers 2

    const-class v0, Lutilcode/com/google/gson/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/FieldNamingPolicy;

    return-object v0
.end method

.method public static values()[Lutilcode/com/google/gson/FieldNamingPolicy;
    .registers 1

    sget-object v0, Lutilcode/com/google/gson/FieldNamingPolicy;->$VALUES:[Lutilcode/com/google/gson/FieldNamingPolicy;

    invoke-virtual {v0}, [Lutilcode/com/google/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lutilcode/com/google/gson/FieldNamingPolicy;

    return-object v0
.end method
