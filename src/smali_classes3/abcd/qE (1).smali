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
    .registers 4

    iput p3, p0, Labcd/qE;->tp:I

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Labcd/rE;-><init>(IILabcd/rE;)V

    return-void
.end method


# virtual methods
.method public j6(I)Z
    .registers 3

    iget v0, p0, Labcd/qE;->tp:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
