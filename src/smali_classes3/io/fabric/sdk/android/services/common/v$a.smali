.class public final enum Lio/fabric/sdk/android/services/common/v$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/fabric/sdk/android/services/common/v$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lio/fabric/sdk/android/services/common/v$a;

.field public static final enum FH:Lio/fabric/sdk/android/services/common/v$a;

.field public static final enum Hw:Lio/fabric/sdk/android/services/common/v$a;

.field public static final enum VH:Lio/fabric/sdk/android/services/common/v$a;

.field public static final enum Zo:Lio/fabric/sdk/android/services/common/v$a;

.field private static final gn:[Lio/fabric/sdk/android/services/common/v$a;

.field public static final enum j6:Lio/fabric/sdk/android/services/common/v$a;

.field public static final enum v5:Lio/fabric/sdk/android/services/common/v$a;


# instance fields
.field public final u7:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lio/fabric/sdk/android/services/common/v$a;

    const-string v1, "WIFI_MAC_ADDRESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/fabric/sdk/android/services/common/v$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/common/v$a;->j6:Lio/fabric/sdk/android/services/common/v$a;

    new-instance v1, Lio/fabric/sdk/android/services/common/v$a;

    const-string v4, "BLUETOOTH_MAC_ADDRESS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/fabric/sdk/android/services/common/v$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/fabric/sdk/android/services/common/v$a;->DW:Lio/fabric/sdk/android/services/common/v$a;

    new-instance v4, Lio/fabric/sdk/android/services/common/v$a;

    const-string v6, "FONT_TOKEN"

    const/16 v7, 0x35

    invoke-direct {v4, v6, v5, v7}, Lio/fabric/sdk/android/services/common/v$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/fabric/sdk/android/services/common/v$a;->FH:Lio/fabric/sdk/android/services/common/v$a;

    new-instance v6, Lio/fabric/sdk/android/services/common/v$a;

    const/16 v7, 0x64

    const-string v8, "ANDROID_ID"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v7}, Lio/fabric/sdk/android/services/common/v$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/fabric/sdk/android/services/common/v$a;->Hw:Lio/fabric/sdk/android/services/common/v$a;

    new-instance v7, Lio/fabric/sdk/android/services/common/v$a;

    const/16 v8, 0x65

    const-string v10, "ANDROID_DEVICE_ID"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v8}, Lio/fabric/sdk/android/services/common/v$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/fabric/sdk/android/services/common/v$a;->v5:Lio/fabric/sdk/android/services/common/v$a;

    new-instance v8, Lio/fabric/sdk/android/services/common/v$a;

    const/16 v10, 0x66

    const-string v12, "ANDROID_SERIAL"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lio/fabric/sdk/android/services/common/v$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/fabric/sdk/android/services/common/v$a;->Zo:Lio/fabric/sdk/android/services/common/v$a;

    new-instance v10, Lio/fabric/sdk/android/services/common/v$a;

    const/16 v12, 0x67

    const-string v14, "ANDROID_ADVERTISING_ID"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lio/fabric/sdk/android/services/common/v$a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/fabric/sdk/android/services/common/v$a;->VH:Lio/fabric/sdk/android/services/common/v$a;

    const/4 v12, 0x7

    new-array v12, v12, [Lio/fabric/sdk/android/services/common/v$a;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v9

    aput-object v7, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    sput-object v12, Lio/fabric/sdk/android/services/common/v$a;->gn:[Lio/fabric/sdk/android/services/common/v$a;

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

    iput p3, p0, Lio/fabric/sdk/android/services/common/v$a;->u7:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/v$a;
    .registers 2

    const-class v0, Lio/fabric/sdk/android/services/common/v$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/common/v$a;

    return-object p0
.end method

.method public static values()[Lio/fabric/sdk/android/services/common/v$a;
    .registers 1

    sget-object v0, Lio/fabric/sdk/android/services/common/v$a;->gn:[Lio/fabric/sdk/android/services/common/v$a;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/common/v$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/common/v$a;

    return-object v0
.end method
