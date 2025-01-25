.class Lcom/aide/ui/preferences/e$100000000;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/aide/ui/preferences/e;


# direct methods
.method constructor <init>(Lcom/aide/ui/preferences/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/preferences/e$100000000;->this$0:Lcom/aide/ui/preferences/e;

    return-void
.end method

.method static access$0(Lcom/aide/ui/preferences/e$100000000;)Lcom/aide/ui/preferences/e;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/preferences/e$100000000;->this$0:Lcom/aide/ui/preferences/e;

    return-object p0
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

    .line 60
    invoke-static {}, Lcom/aide/ui/U;->rN()Labcd/Jk;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Jk;->Hw()V

    return-void
.end method
