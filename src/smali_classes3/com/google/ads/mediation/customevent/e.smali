.class public final Lcom/google/ads/mediation/customevent/e;
.super Lcom/google/ads/mediation/e;


# instance fields
.field public DW:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/e$b;
        name = "class_name"
        required = true
    .end annotation
.end field

.field public FH:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/e$b;
        name = "parameter"
        required = false
    .end annotation
.end field

.field public j6:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/e$b;
        name = "label"
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/ads/mediation/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/e;->FH:Ljava/lang/String;

    return-void
.end method
