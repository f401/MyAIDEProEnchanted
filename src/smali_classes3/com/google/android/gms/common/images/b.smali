.class final Lcom/google/android/gms/common/images/b;
.super Ljava/lang/Object;


# instance fields
.field public final j6:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/b;->j6:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/common/images/b;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/b;

    iget-object p1, p1, Lcom/google/android/gms/common/images/b;->j6:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/common/images/b;->j6:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/b;->j6:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->j6([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
