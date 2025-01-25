.class public Landroid/support/v4/app/y;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/y;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/support/v4/app/y;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/y;->j6:Ljava/util/List;

    iput-object p2, p0, Landroid/support/v4/app/y;->DW:Ljava/util/List;

    return-void
.end method


# virtual methods
.method DW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/y;->j6:Ljava/util/List;

    return-object v0
.end method

.method j6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/y;->DW:Ljava/util/List;

    return-object v0
.end method
