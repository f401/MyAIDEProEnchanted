.class final Labcd/NF$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/NF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private j6:Labcd/NF$a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method j6()Labcd/NF$a;
    .registers 3

    iget-object v0, p0, Labcd/NF$b;->j6:Labcd/NF$a;

    if-nez v0, :cond_0

    new-instance v0, Labcd/NF$a;

    invoke-direct {v0}, Labcd/NF$a;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Labcd/NF$a;->j6:Labcd/NF$a;

    iput-object v1, p0, Labcd/NF$b;->j6:Labcd/NF$a;

    invoke-virtual {v0}, Labcd/NF$a;->j6()V

    goto :goto_0
.end method

.method j6(Labcd/NF$a;)V
    .registers 3

    iget-object v0, p0, Labcd/NF$b;->j6:Labcd/NF$a;

    iput-object v0, p1, Labcd/NF$a;->j6:Labcd/NF$a;

    iput-object p1, p0, Labcd/NF$b;->j6:Labcd/NF$a;

    return-void
.end method
