.class Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final this$0:Landroidj/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    iput p3, p0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I

    iput p4, p0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

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
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    iget v4, p0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I

    iget v5, p0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
