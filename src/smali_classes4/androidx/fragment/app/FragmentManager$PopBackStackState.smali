.class Landroidx/fragment/app/FragmentManager$PopBackStackState;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mName:Ljava/lang/String;

    iput p3, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    iput p4, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mFlags:I

    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1e

    iget v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    if-gez v0, :cond_1e

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mName:Ljava/lang/String;

    iget v4, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    iget v5, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_1d
.end method
