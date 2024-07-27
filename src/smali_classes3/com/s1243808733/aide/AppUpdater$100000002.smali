.class Lcom/s1243808733/aide/AppUpdater$100000002;
.super Ljava/lang/Object;
.source "AppUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AppUpdater;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AppUpdater;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AppUpdater$100000002;->this$0:Lcom/s1243808733/aide/AppUpdater;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AppUpdater$100000002;)Lcom/s1243808733/aide/AppUpdater;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AppUpdater$100000002;->this$0:Lcom/s1243808733/aide/AppUpdater;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
