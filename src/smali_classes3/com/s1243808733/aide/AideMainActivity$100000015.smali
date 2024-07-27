.class Lcom/s1243808733/aide/AideMainActivity$100000015;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000015;->val$activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1145
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$100000015;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/s1243808733/util/EscapeUtils;->XML:Lcom/s1243808733/util/EscapeUtils;

    invoke-static {v1, v0, v2}, Lcom/s1243808733/util/EscapeUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/s1243808733/util/EscapeUtils;)V

    .line 1146
    const/4 v0, 0x0

    return v0
.end method
