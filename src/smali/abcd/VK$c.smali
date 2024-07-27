.class final Labcd/VK$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/VK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final j6:Labcd/VK$a;


# direct methods
.method constructor <init>(Labcd/VK$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/VK$c;->j6:Labcd/VK$a;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    iget-object v0, p0, Labcd/VK$c;->j6:Labcd/VK$a;

    invoke-virtual {v0}, Labcd/VK$a;->DW()V

    return-void
.end method
