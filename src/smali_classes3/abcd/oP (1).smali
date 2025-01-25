.class Labcd/oP;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/pP;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/pP;


# direct methods
.method constructor <init>(Labcd/pP;)V
    .registers 2

    iput-object p1, p0, Labcd/oP;->j6:Labcd/pP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Labcd/oP;->j6:Labcd/pP;

    invoke-static {v0}, Labcd/pP;->j6(Labcd/pP;)V

    const/4 v0, 0x0

    return-object v0
.end method
