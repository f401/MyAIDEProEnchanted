.class final Lcom/google/android/gms/internal/measurement/_a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/bb;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/Xa;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/_a;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6([BII)[B
    .registers 5

    add-int v0, p3, p2

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
