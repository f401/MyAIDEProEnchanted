.class Lcom/s1243808733/aide/AideMainActivity$100000005;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field instance:Labcd/tg;

.field private final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000005;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    new-instance v0, Labcd/tg;

    invoke-direct {v0}, Labcd/tg;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000005;->instance:Labcd/tg;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000005;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000005;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000005;->instance:Labcd/tg;

    invoke-virtual {v0}, Labcd/tg;->run()Z

    .line 372
    const/4 v0, 0x0

    return v0
.end method
