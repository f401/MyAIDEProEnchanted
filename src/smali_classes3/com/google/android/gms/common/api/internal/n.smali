.class final Lcom/google/android/gms/common/api/internal/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/common/api/internal/b$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->j6:Lcom/google/android/gms/common/api/internal/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->j6:Lcom/google/android/gms/common/api/internal/b$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/b$a;)V

    return-void
.end method
