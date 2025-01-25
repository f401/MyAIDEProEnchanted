.class Labcd/cH;
.super Labcd/bH$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/dH$a;->j6()Labcd/bH$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final FH:Labcd/dH$a;


# direct methods
.method constructor <init>(Labcd/dH$a;)V
    .registers 2

    iput-object p1, p0, Labcd/cH;->FH:Labcd/dH$a;

    invoke-direct {p0}, Labcd/bH$b;-><init>()V

    return-void
.end method
