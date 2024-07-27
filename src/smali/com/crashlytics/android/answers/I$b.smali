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
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->j6:Lcom/crashlytics/android/answers/I$b;

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->DW:Lcom/crashlytics/android/answers/I$b;

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->FH:Lcom/crashlytics/android/answers/I$b;

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->Hw:Lcom/crashlytics/android/answers/I$b;

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "CRASH"

    invoke-direct {v0, v1, v7}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->v5:Lcom/crashlytics/android/answers/I$b;

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "INSTALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->Zo:Lcom/crashlytics/android/answers/I$b;

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "CUSTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    new-instance v0, Lcom/crashlytics/android/answers/I$b;

    const-string v1, "PREDEFINED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/answers/I$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/crashlytics/android/answers/I$b;

    sget-object v1, Lcom/crashlytics/android/answers/I$b;->j6:Lcom/crashlytics/android/answers/I$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crashlytics/android/answers/I$b;->DW:Lcom/crashlytics/android/answers/I$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/answers/I$b;->FH:Lcom/crashlytics/android/answers/I$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/answers/I$b;->Hw:Lcom/crashlytics/android/answers/I$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crashlytics/android/answers/I$b;->v5:Lcom/crashlytics/android/answers/I$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/crashlytics/android/answers/I$b;->Zo:Lcom/crashlytics/android/answers/I$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/answers/I$b;->u7:[Lcom/crashlytics/android/answers/I$b;

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

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/I$b;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/answers/I$b;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->u7:[Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0}, [Lcom/crashlytics/android/answers/I$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/answers/I$b;

    return-object v0
.end method
