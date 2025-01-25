.class public final enum Lio/fabric/sdk/android/services/common/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/fabric/sdk/android/services/common/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lio/fabric/sdk/android/services/common/m;

.field public static final enum FH:Lio/fabric/sdk/android/services/common/m;

.field public static final enum Hw:Lio/fabric/sdk/android/services/common/m;

.field public static final enum j6:Lio/fabric/sdk/android/services/common/m;

.field private static final v5:[Lio/fabric/sdk/android/services/common/m;


# instance fields
.field private final Zo:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lio/fabric/sdk/android/services/common/m;

    const-string v1, "DEVELOPER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/fabric/sdk/android/services/common/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/common/m;->j6:Lio/fabric/sdk/android/services/common/m;

    new-instance v1, Lio/fabric/sdk/android/services/common/m;

    const-string v4, "USER_SIDELOAD"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/fabric/sdk/android/services/common/m;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/fabric/sdk/android/services/common/m;->DW:Lio/fabric/sdk/android/services/common/m;

    new-instance v4, Lio/fabric/sdk/android/services/common/m;

    const-string v6, "TEST_DISTRIBUTION"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/fabric/sdk/android/services/common/m;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/fabric/sdk/android/services/common/m;->FH:Lio/fabric/sdk/android/services/common/m;

    new-instance v6, Lio/fabric/sdk/android/services/common/m;

    const-string v8, "APP_STORE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lio/fabric/sdk/android/services/common/m;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/fabric/sdk/android/services/common/m;->Hw:Lio/fabric/sdk/android/services/common/m;

    new-array v8, v9, [Lio/fabric/sdk/android/services/common/m;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lio/fabric/sdk/android/services/common/m;->v5:[Lio/fabric/sdk/android/services/common/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/fabric/sdk/android/services/common/m;->Zo:I

    return-void
.end method

.method public static j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/m;
    .registers 2

    const-string v0, "io.crash.air"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lio/fabric/sdk/android/services/common/m;->FH:Lio/fabric/sdk/android/services/common/m;

    return-object p0

    :cond_b
    if-eqz p0, :cond_10

    sget-object p0, Lio/fabric/sdk/android/services/common/m;->Hw:Lio/fabric/sdk/android/services/common/m;

    return-object p0

    :cond_10
    sget-object p0, Lio/fabric/sdk/android/services/common/m;->j6:Lio/fabric/sdk/android/services/common/m;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/m;
    .registers 2

    const-class v0, Lio/fabric/sdk/android/services/common/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/common/m;

    return-object p0
.end method

.method public static values()[Lio/fabric/sdk/android/services/common/m;
    .registers 1

    sget-object v0, Lio/fabric/sdk/android/services/common/m;->v5:[Lio/fabric/sdk/android/services/common/m;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/common/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/common/m;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    iget v0, p0, Lio/fabric/sdk/android/services/common/m;->Zo:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lio/fabric/sdk/android/services/common/m;->Zo:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
