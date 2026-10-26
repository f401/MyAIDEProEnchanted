.class public Labcd/lw$a;
.super Labcd/iv;

# interfaces
.implements Lcom/appfour/backbone/api/define/DefineHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final ro:Labcd/lw;


# direct methods
.method public constructor <init>(Labcd/lw;)V
    .locals 0

    iput-object p1, p0, Labcd/lw$a;->ro:Labcd/lw;

    invoke-direct {p0}, Labcd/iv;-><init>()V

    return-void
.end method


# virtual methods
.method protected j6()Labcd/lw$a;
    .locals 1

    iget-object v0, p0, Labcd/lw$a;->ro:Labcd/lw;

    invoke-static {v0}, Labcd/lw;->j6(Labcd/lw;)Labcd/lw$a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic j6()Lcom/appfour/backbone/api/define/DefineHook;
    .locals 1

    invoke-virtual {p0}, Labcd/lw$a;->j6()Labcd/lw$a;

    move-result-object v0

    return-object v0
.end method

.method protected j6(JLcom/appfour/backbone/api/objects/EventData;)V
    .locals 1

    iget-object v0, p0, Labcd/lw$a;->ro:Labcd/lw;

    invoke-static {v0, p1, p2, p3}, Labcd/lw;->j6(Labcd/lw;JLcom/appfour/backbone/api/objects/EventData;)V

    return-void
.end method

.method protected j6(JLjava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Labcd/lw$a;->ro:Labcd/lw;

    invoke-static {v0, p1, p2, p3}, Labcd/ow;->j6(Labcd/lw;JLjava/lang/Throwable;)V

    return-void
.end method
