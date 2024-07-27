.class final Lcom/google/android/gms/internal/measurement/ic;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/internal/measurement/gc;

.field private static final j6:Lcom/google/android/gms/internal/measurement/gc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->FH()Lcom/google/android/gms/internal/measurement/gc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ic;->j6:Lcom/google/android/gms/internal/measurement/gc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/hc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/hc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ic;->DW:Lcom/google/android/gms/internal/measurement/gc;

    return-void
.end method

.method static DW()Lcom/google/android/gms/internal/measurement/gc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ic;->DW:Lcom/google/android/gms/internal/measurement/gc;

    return-object v0
.end method

.method private static FH()Lcom/google/android/gms/internal/measurement/gc;
    .registers 2

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/gc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j6()Lcom/google/android/gms/internal/measurement/gc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ic;->j6:Lcom/google/android/gms/internal/measurement/gc;

    return-object v0
.end method
