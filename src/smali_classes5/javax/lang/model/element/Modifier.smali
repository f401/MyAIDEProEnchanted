.class public final enum Ljavax/lang/model/element/Modifier;
.super Ljava/lang/Enum;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/lang/model/element/Modifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Ljavax/lang/model/element/Modifier;

.field public static final enum ABSTRACT:Ljavax/lang/model/element/Modifier;

.field public static final enum FINAL:Ljavax/lang/model/element/Modifier;

.field public static final enum NATIVE:Ljavax/lang/model/element/Modifier;

.field public static final enum PRIVATE:Ljavax/lang/model/element/Modifier;

.field public static final enum PROTECTED:Ljavax/lang/model/element/Modifier;

.field public static final enum PUBLIC:Ljavax/lang/model/element/Modifier;

.field public static final enum STATIC:Ljavax/lang/model/element/Modifier;

.field public static final enum STRICTFP:Ljavax/lang/model/element/Modifier;

.field public static final enum SYNCHRONIZED:Ljavax/lang/model/element/Modifier;

.field public static final enum TRANSIENT:Ljavax/lang/model/element/Modifier;

.field public static final enum VOLATILE:Ljavax/lang/model/element/Modifier;


# instance fields
.field private lowercase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v3}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    .line 53
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "PROTECTED"

    invoke-direct {v0, v1, v4}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    .line 54
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v5}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    .line 55
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "ABSTRACT"

    invoke-direct {v0, v1, v6}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    .line 56
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v7}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 57
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "FINAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    .line 58
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "TRANSIENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->TRANSIENT:Ljavax/lang/model/element/Modifier;

    .line 59
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "VOLATILE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->VOLATILE:Ljavax/lang/model/element/Modifier;

    .line 60
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "SYNCHRONIZED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->SYNCHRONIZED:Ljavax/lang/model/element/Modifier;

    .line 61
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "NATIVE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->NATIVE:Ljavax/lang/model/element/Modifier;

    .line 62
    new-instance v0, Ljavax/lang/model/element/Modifier;

    const-string v1, "STRICTFP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljavax/lang/model/element/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/Modifier;->STRICTFP:Ljavax/lang/model/element/Modifier;

    .line 47
    const/16 v1, 0xb

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v2, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v2, v1, v3

    sget-object v2, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    aput-object v2, v1, v4

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v2, v1, v5

    sget-object v2, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    aput-object v2, v1, v6

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljavax/lang/model/element/Modifier;->TRANSIENT:Ljavax/lang/model/element/Modifier;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Ljavax/lang/model/element/Modifier;->VOLATILE:Ljavax/lang/model/element/Modifier;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Ljavax/lang/model/element/Modifier;->SYNCHRONIZED:Ljavax/lang/model/element/Modifier;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Ljavax/lang/model/element/Modifier;->NATIVE:Ljavax/lang/model/element/Modifier;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sput-object v1, Ljavax/lang/model/element/Modifier;->$VALUES:[Ljavax/lang/model/element/Modifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/lang/model/element/Modifier;->lowercase:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/lang/model/element/Modifier;
    .registers 2

    .line 47
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    return-object v0
.end method

.method public static values()[Ljavax/lang/model/element/Modifier;
    .registers 1

    .line 47
    sget-object v0, Ljavax/lang/model/element/Modifier;->$VALUES:[Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0}, [Ljavax/lang/model/element/Modifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/lang/model/element/Modifier;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Ljavax/lang/model/element/Modifier;->lowercase:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 72
    invoke-virtual {p0}, Ljavax/lang/model/element/Modifier;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/lang/model/element/Modifier;->lowercase:Ljava/lang/String;

    .line 74
    :cond_10
    iget-object v0, p0, Ljavax/lang/model/element/Modifier;->lowercase:Ljava/lang/String;

    return-object v0
.end method
