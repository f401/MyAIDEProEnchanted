.class public final Landroidx/core/view/DragAndDropPermissionsCompat;
.super Ljava/lang/Object;


# instance fields
.field private mDragAndDropPermissions:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v0, Landroidx/core/view/DragAndDropPermissionsCompat;

    invoke-direct {v0, v1}, Landroidx/core/view/DragAndDropPermissionsCompat;-><init>(Ljava/lang/Object;)V

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public release()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/core/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    check-cast v0, Landroid/view/DragAndDropPermissions;

    invoke-virtual {v0}, Landroid/view/DragAndDropPermissions;->release()V

    :cond_d
    return-void
.end method
