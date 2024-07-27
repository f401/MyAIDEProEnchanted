.class Labcd/qE;
.super Labcd/rE;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/rE;->DW(I)Labcd/rE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final tp:I


# direct methods
.method constructor <init>(III)V
    .registers 5

    iput p3, p0, Labcd/qE;->tp:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/rE;-><init>(IILabcd/rE;)V

    return-void
.end method


# virtual methods
.method public j6(I)Z
    .registers 3

    iget v0, p0, Labcd/qE;->tp:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
