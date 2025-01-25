.class public final Lcom/google/android/gms/ads/formats/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/b$a;
    }
.end annotation


# instance fields
.field private final DW:I

.field private final FH:Z

.field private final Hw:I

.field private final Zo:Z

.field private final j6:Z

.field private final v5:Lcom/google/android/gms/ads/i;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/formats/b$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/b$a;->j6(Lcom/google/android/gms/ads/formats/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->j6:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/b$a;->DW(Lcom/google/android/gms/ads/formats/b$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/b;->DW:I

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/b$a;->FH(Lcom/google/android/gms/ads/formats/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->FH:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/b$a;->Hw(Lcom/google/android/gms/ads/formats/b$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/b;->Hw:I

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/b$a;->v5(Lcom/google/android/gms/ads/formats/b$a;)Lcom/google/android/gms/ads/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/b;->v5:Lcom/google/android/gms/ads/i;

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/b$a;->Zo(Lcom/google/android/gms/ads/formats/b$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/b;->Zo:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/formats/b$a;Lcom/google/android/gms/ads/formats/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/b;-><init>(Lcom/google/android/gms/ads/formats/b$a;)V

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/formats/b;->DW:I

    return v0
.end method

.method public final FH()Lcom/google/android/gms/ads/i;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/b;->v5:Lcom/google/android/gms/ads/i;

    return-object v0
.end method

.method public final Hw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->FH:Z

    return v0
.end method

.method public final Zo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->Zo:Z

    return v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/formats/b;->Hw:I

    return v0
.end method

.method public final v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->j6:Z

    return v0
.end method
