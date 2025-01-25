.class public final enum Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;
.super Ljava/lang/Enum;
.source "ApiInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

.field public static final enum CLASS:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

.field public static final enum FIELD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

.field public static final enum METHOD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;
    .registers 3

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->CLASS:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->FIELD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->METHOD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->CLASS:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    .line 68
    new-instance v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    const-string v1, "FIELD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->FIELD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    .line 69
    new-instance v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    const-string v1, "METHOD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->METHOD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    .line 66
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->$values()[Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->$VALUES:[Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;
    .registers 2

    .line 66
    const-class v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;
    .registers 1

    .line 66
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->$VALUES:[Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    invoke-virtual {v0}, [Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    return-object v0
.end method
