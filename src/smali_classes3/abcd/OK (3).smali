.class Labcd/OK;
.super Labcd/FG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/PK;->j6(Labcd/gE;Labcd/pK;)Labcd/FG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final tp:Labcd/PK;


# direct methods
.method constructor <init>(Labcd/PK;Ljava/io/File;Labcd/pK;)V
    .registers 4

    iput-object p1, p0, Labcd/OK;->tp:Labcd/PK;

    invoke-direct {p0, p2, p3}, Labcd/FG;-><init>(Ljava/io/File;Labcd/pK;)V

    return-void
.end method


# virtual methods
.method public VH()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public gn()V
    .registers 1

    return-void
.end method
