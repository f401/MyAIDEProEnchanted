.class final enum Lcom/crashlytics/android/answers/I$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/answers/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/crashlytics/android/answers/I$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/crashlytics/android/answers/I$b;

.field public static final enum FH:Lcom/crashlytics/android/answers/I$b;

.field public static final enum Hw:Lcom/crashlytics/android/answers/I$b;

.field public static final enum VH:Lcom/crashlytics/android/answers/I$b;

.field public static final enum Zo:Lcom/crashlytics/android/answers/I$b;

.field public static final enum gn:Lcom/crashlytics/android/answers/I$b;

.field public static final enum j6:Lcom/crashlytics/android/answers/I$b;

.field private static final u7:[Lcom/crashlytics/android/answers/I$b;

.field public static final enum v5:Lcom/crashlytics/android/answers/I$b;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->j6:Lcom/crashlytics/android/answers/I$b;

    new-instance v1, Lcom/crashlytics/android/answers/I$b;

    const-string v3, "RESUME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/crashlytics/android/answers/I$b;->DW:Lcom/crashlytics/android/answers/I$b;

    new-instance v3, Lcom/crashlytics/android/answers/I$b;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/crashlytics/android/answers/I$b;->FH:Lcom/crashlytics/android/answers/I$b;

    new-instance v5, Lcom/crashlytics/android/answers/I$b;

    const-string v7, "STOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/crashlytics/android/answers/I$b;->Hw:Lcom/crashlytics/android/answers/I$b;

    new-instance v7, Lcom/crashlytics/android/answers/I$b;

    const-string v9, "CRASH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/crashlytics/android/answers/I$b;->v5:Lcom/crashlytics/android/answers/I$b;

    new-instance v9, Lcom/crashlytics/android/answers/I$b;

    const-string v11, "INSTALL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/crashlytics/android/answers/I$b;->Zo:Lcom/crashlytics/android/answers/I$b;

    new-instance v11, Lcom/crashlytics/android/answers/I$b;

    const-string v13, "CUSTOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    new-instance v13, Lcom/crashlytics/android/answers/I$b;

    const-string v15, "PREDEFINED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/crashlytics/android/answers/I$b;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/crashlytics/android/answers/I$b;->u7:[Lcom/crashlytics/android/answers/I$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/answers/I$b;
    .registers 2

    const-class v0, Lcom/crashlytics/android/answers/I$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/crashlytics/android/answers/I$b;

    return-object p0
.end method

.method public static values()[Lcom/crashlytics/android/answers/I$b;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->u7:[Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0}, [Lcom/crashlytics/android/answers/I$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/answers/I$b;

    return-object v0
.end method
