.class public Landroidj/support/v4/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;


# instance fields
.field private final mChildNonConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/app/Fragment;",
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
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/app/FragmentManagerNonConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    iput-object p2, p0, Landroidj/support/v4/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getChildNonConfigs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-object v0
.end method

.method getFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    return-object v0
.end method
