.class public Labcd/TF$a;
.super Labcd/dG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/TF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field aM:I


# direct methods
.method protected constructor <init>(Labcd/YD;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dG;-><init>(Labcd/YD;)V

    const/4 p1, -0x1

    iput p1, p0, Labcd/TF$a;->aM:I

    return-void
.end method


# virtual methods
.method public BT()I
    .registers 2

    iget v0, p0, Labcd/TF$a;->aM:I

    return v0
.end method
