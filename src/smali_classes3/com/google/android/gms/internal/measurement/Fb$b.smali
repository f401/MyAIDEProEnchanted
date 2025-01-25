.class public final Lcom/google/android/gms/internal/measurement/Fb$b;
.super Lcom/google/android/gms/internal/measurement/Qa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/Fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/measurement/Fb<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/measurement/Qa<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/measurement/Fb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/Fb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Qa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Fb$b;->DW:Lcom/google/android/gms/internal/measurement/Fb;

    return-void
.end method


# virtual methods
.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/hb;Lcom/google/android/gms/internal/measurement/sb;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fb$b;->DW:Lcom/google/android/gms/internal/measurement/Fb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fb;->j6(Lcom/google/android/gms/internal/measurement/Fb;Lcom/google/android/gms/internal/measurement/hb;Lcom/google/android/gms/internal/measurement/sb;)Lcom/google/android/gms/internal/measurement/Fb;

    move-result-object p1

    return-object p1
.end method
