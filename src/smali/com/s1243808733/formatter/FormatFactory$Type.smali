.class public final enum Lcom/s1243808733/formatter/FormatFactory$Type;
.super Ljava/lang/Enum;
.source "FormatFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/formatter/FormatFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/formatter/FormatFactory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/formatter/FormatFactory$Type;

.field public static final enum JAVA:Lcom/s1243808733/formatter/FormatFactory$Type;

.field public static final enum JSON:Lcom/s1243808733/formatter/FormatFactory$Type;

.field public static final enum XML:Lcom/s1243808733/formatter/FormatFactory$Type;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/formatter/FormatFactory$Type;
    .registers 3

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/s1243808733/formatter/FormatFactory$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/formatter/FormatFactory$Type;->XML:Lcom/s1243808733/formatter/FormatFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/formatter/FormatFactory$Type;->JAVA:Lcom/s1243808733/formatter/FormatFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/formatter/FormatFactory$Type;->JSON:Lcom/s1243808733/formatter/FormatFactory$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 116
    new-instance v0, Lcom/s1243808733/formatter/FormatFactory$Type;

    const-string v1, "XML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/formatter/FormatFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/formatter/FormatFactory$Type;->XML:Lcom/s1243808733/formatter/FormatFactory$Type;

    .line 117
    new-instance v0, Lcom/s1243808733/formatter/FormatFactory$Type;

    const-string v1, "JAVA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/formatter/FormatFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/formatter/FormatFactory$Type;->JAVA:Lcom/s1243808733/formatter/FormatFactory$Type;

    .line 118
    new-instance v0, Lcom/s1243808733/formatter/FormatFactory$Type;

    const-string v1, "JSON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/formatter/FormatFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/formatter/FormatFactory$Type;->JSON:Lcom/s1243808733/formatter/FormatFactory$Type;

    .line 115
    invoke-static {}, Lcom/s1243808733/formatter/FormatFactory$Type;->$values()[Lcom/s1243808733/formatter/FormatFactory$Type;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/formatter/FormatFactory$Type;->$VALUES:[Lcom/s1243808733/formatter/FormatFactory$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/formatter/FormatFactory$Type;
    .registers 2

    .line 115
    const-class v0, Lcom/s1243808733/formatter/FormatFactory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/formatter/FormatFactory$Type;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/formatter/FormatFactory$Type;
    .registers 1

    .line 115
    sget-object v0, Lcom/s1243808733/formatter/FormatFactory$Type;->$VALUES:[Lcom/s1243808733/formatter/FormatFactory$Type;

    invoke-virtual {v0}, [Lcom/s1243808733/formatter/FormatFactory$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/formatter/FormatFactory$Type;

    return-object v0
.end method
