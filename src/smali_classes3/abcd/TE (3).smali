.class Labcd/TE;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/FD;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/UE;->XL()Labcd/KC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/UE;


# direct methods
.method constructor <init>(Labcd/UE;)V
    .registers 2

    iput-object p1, p0, Labcd/TE;->j6:Labcd/UE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/ED;)V
    .registers 2

    iget-object p1, p0, Labcd/TE;->j6:Labcd/UE;

    invoke-virtual {p1}, Labcd/UE;->Mr()V

    return-void
.end method
