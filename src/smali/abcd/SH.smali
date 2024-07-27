.class Labcd/SH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/TH;->j6(Labcd/LE;[Labcd/MH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Labcd/HH;

.field private final FH:Ljava/util/List;

.field final j6:Labcd/TH;


# direct methods
.method constructor <init>(Labcd/TH;Labcd/HH;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Labcd/SH;->j6:Labcd/TH;

    iput-object p2, p0, Labcd/SH;->DW:Labcd/HH;

    iput-object p3, p0, Labcd/SH;->FH:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/SH;->DW:Labcd/HH;

    invoke-virtual {v0}, Labcd/HH;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Labcd/SH;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
