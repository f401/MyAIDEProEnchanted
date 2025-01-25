.class Labcd/RG;
.super Labcd/SG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/SG;->j6(Labcd/aH;JJ)Labcd/SG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/SG;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
