.class Labcd/eH;
.super Labcd/bH$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/fH$a;->j6()Labcd/bH$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final FH:Labcd/fH$a;


# direct methods
.method constructor <init>(Labcd/fH$a;)V
    .registers 2

    iput-object p1, p0, Labcd/eH;->FH:Labcd/fH$a;

    invoke-direct {p0}, Labcd/bH$b;-><init>()V

    return-void
.end method
