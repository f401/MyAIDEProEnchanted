.class Labcd/HG;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/DD;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/IG;-><init>(Labcd/bE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/IG;


# direct methods
.method constructor <init>(Labcd/IG;)V
    .registers 2

    iput-object p1, p0, Labcd/HG;->j6:Labcd/IG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/CD;)V
    .registers 3

    iget-object v0, p0, Labcd/HG;->j6:Labcd/IG;

    invoke-virtual {v0, p1}, Labcd/UE;->j6(Labcd/KD;)V

    return-void
.end method
