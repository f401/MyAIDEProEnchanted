.class Labcd/Rv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Qv$d;-><init>(Landroid/view/Window;Lcom/appfour/backbone/api/objects/UserActionWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/Qv$d;


# direct methods
.method constructor <init>(Labcd/Qv$d;)V
    .registers 2

    iput-object p1, p0, Labcd/Rv;->j6:Labcd/Qv$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Labcd/Rv;->j6:Labcd/Qv$d;

    invoke-static {v0}, Labcd/Qv$d;->j6(Labcd/Qv$d;)V

    return-void
.end method
