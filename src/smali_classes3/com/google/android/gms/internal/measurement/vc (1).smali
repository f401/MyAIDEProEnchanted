.class final Lcom/google/android/gms/internal/measurement/vc;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/internal/measurement/tc;

.field private static final j6:Lcom/google/android/gms/internal/measurement/tc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/vc;->FH()Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/vc;->j6:Lcom/google/android/gms/internal/measurement/tc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/uc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/uc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/vc;->DW:Lcom/google/android/gms/internal/measurement/tc;

    return-void
.end method

.method static DW()Lcom/google/android/gms/internal/measurement/tc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/vc;->DW:Lcom/google/android/gms/internal/measurement/tc;

    return-object v0
.end method

.method private static FH()Lcom/google/android/gms/internal/measurement/tc;
    .registers 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/tc;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method static j6()Lcom/google/android/gms/internal/measurement/tc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/vc;->j6:Lcom/google/android/gms/internal/measurement/tc;

    return-object v0
.end method
