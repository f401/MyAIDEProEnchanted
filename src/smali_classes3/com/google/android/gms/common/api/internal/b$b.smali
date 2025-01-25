.class final Lcom/google/android/gms/common/api/internal/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/common/Feature;

.field private final j6:Lcom/google/android/gms/common/api/internal/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/Feature;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;",
            "Lcom/google/android/gms/common/Feature;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b$b;->j6:Lcom/google/android/gms/common/api/internal/E;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/b$b;->DW:Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/Feature;Lcom/google/android/gms/common/api/internal/m;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/b$b;-><init>(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/Feature;)V

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/Feature;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b$b;->DW:Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/E;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b$b;->j6:Lcom/google/android/gms/common/api/internal/E;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_1e

    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/b$b;

    if-eqz v0, :cond_1e

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$b;->j6:Lcom/google/android/gms/common/api/internal/E;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/b$b;->j6:Lcom/google/android/gms/common/api/internal/E;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$b;->DW:Lcom/google/android/gms/common/Feature;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/b$b;->DW:Lcom/google/android/gms/common/Feature;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$b;->j6:Lcom/google/android/gms/common/api/internal/E;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$b;->DW:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->j6([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$b;->j6:Lcom/google/android/gms/common/api/internal/E;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "feature"

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$b;->DW:Lcom/google/android/gms/common/Feature;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
