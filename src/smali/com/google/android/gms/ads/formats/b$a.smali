.class public final Lcom/google/android/gms/ads/formats/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private DW:I

.field private FH:Z

.field private Hw:Lcom/google/android/gms/ads/i;

.field private Zo:Z

.field private j6:Z

.field private v5:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/ads/formats/b$a;->j6:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/formats/b$a;->DW:I

    iput-boolean v1, p0, Lcom/google/android/gms/ads/formats/b$a;->FH:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/formats/b$a;->v5:I

    iput-boolean v1, p0, Lcom/google/android/gms/ads/formats/b$a;->Zo:Z

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/ads/formats/b$a;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/formats/b$a;->DW:I

    return v0
.end method

.method static synthetic FH(Lcom/google/android/gms/ads/formats/b$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/b$a;->FH:Z

    return v0
.end method

.method static synthetic Hw(Lcom/google/android/gms/ads/formats/b$a;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/formats/b$a;->v5:I

    return v0
.end method

.method static synthetic Zo(Lcom/google/android/gms/ads/formats/b$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/b$a;->Zo:Z

    return v0
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/formats/b$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/b$a;->j6:Z

    return v0
.end method

.method static synthetic v5(Lcom/google/android/gms/ads/formats/b$a;)Lcom/google/android/gms/ads/i;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/b$a;->Hw:Lcom/google/android/gms/ads/i;

    return-object v0
.end method


# virtual methods
.method public final DW(I)Lcom/google/android/gms/ads/formats/b$a;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/formats/b$a;->DW:I

    return-object p0
.end method

.method public final DW(Z)Lcom/google/android/gms/ads/formats/b$a;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/b$a;->j6:Z

    return-object p0
.end method

.method public final j6(I)Lcom/google/android/gms/ads/formats/b$a;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/formats/b$a;->v5:I

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/ads/i;)Lcom/google/android/gms/ads/formats/b$a;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/b$a;->Hw:Lcom/google/android/gms/ads/i;

    return-object p0
.end method

.method public final j6(Z)Lcom/google/android/gms/ads/formats/b$a;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/b$a;->FH:Z

    return-object p0
.end method

.method public final j6()Lcom/google/android/gms/ads/formats/b;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/formats/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/b;-><init>(Lcom/google/android/gms/ads/formats/b$a;Lcom/google/android/gms/ads/formats/h;)V

    return-object v0
.end method
