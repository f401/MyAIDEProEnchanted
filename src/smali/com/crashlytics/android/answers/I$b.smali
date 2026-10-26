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
        "Ljava/lang/Enum",
        "<",
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
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "START"

    invoke-direct {v0, v1, v10}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->j6:Lcom/crashlytics/android/answers/I$b;

    new-instance v1, Lcom/crashlytics/android/answers/I$b;

    const-string v2, "RESUME"

    invoke-direct {v1, v2, v11}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/crashlytics/android/answers/I$b;->DW:Lcom/crashlytics/android/answers/I$b;

    new-instance v2, Lcom/crashlytics/android/answers/I$b;

    const-string v3, "PAUSE"

    invoke-direct {v2, v3, v12}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/crashlytics/android/answers/I$b;->FH:Lcom/crashlytics/android/answers/I$b;

    new-instance v3, Lcom/crashlytics/android/answers/I$b;

    const-string v4, "STOP"

    invoke-direct {v3, v4, v13}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/crashlytics/android/answers/I$b;->Hw:Lcom/crashlytics/android/answers/I$b;

    new-instance v4, Lcom/crashlytics/android/answers/I$b;

    const-string v5, "CRASH"

    invoke-direct {v4, v5, v14}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/crashlytics/android/answers/I$b;->v5:Lcom/crashlytics/android/answers/I$b;

    new-instance v5, Lcom/crashlytics/android/answers/I$b;

    const-string v6, "INSTALL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/crashlytics/android/answers/I$b;->Zo:Lcom/crashlytics/android/answers/I$b;

    new-instance v6, Lcom/crashlytics/android/answers/I$b;

    const-string v7, "CUSTOM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    new-instance v7, Lcom/crashlytics/android/answers/I$b;

    const-string v8, "PREDEFINED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    const/16 v8, 0x8

    new-array v8, v8, [Lcom/crashlytics/android/answers/I$b;

    aput-object v0, v8, v10

    aput-object v1, v8, v11

    aput-object v2, v8, v12

    aput-object v3, v8, v13

    aput-object v4, v8, v14

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    sput-object v8, Lcom/crashlytics/android/answers/I$b;->u7:[Lcom/crashlytics/android/answers/I$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/answers/I$b;
    .locals 1

    const-class v0, Lcom/crashlytics/android/answers/I$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/I$b;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/answers/I$b;
    .locals 1

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->u7:[Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0}, [Lcom/crashlytics/android/answers/I$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/answers/I$b;

    return-object v0
.end method
