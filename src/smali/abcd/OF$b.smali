.class final Labcd/OF$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/OF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private j6:Labcd/OF$a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method j6()Labcd/OF$a;
    .registers 3

    iget-object v0, p0, Labcd/OF$b;->j6:Labcd/OF$a;

    if-nez v0, :cond_0

    new-instance v0, Labcd/OF$a;

    invoke-direct {v0}, Labcd/OF$a;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object v1, p0, Labcd/OF$b;->j6:Labcd/OF$a;

    invoke-virtual {v0}, Labcd/OF$a;->DW()V

    goto :goto_0
.end method

.method j6(Labcd/OF$a;)V
    .registers 3

    iget-object v0, p0, Labcd/OF$b;->j6:Labcd/OF$a;

    iput-object v0, p1, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object p1, p0, Labcd/OF$b;->j6:Labcd/OF$a;

    return-void
.end method
