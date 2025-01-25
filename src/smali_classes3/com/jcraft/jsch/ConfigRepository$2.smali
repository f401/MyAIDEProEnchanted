.class Lcom/jcraft/jsch/ConfigRepository$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ConfigRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;
    .registers 2

    sget-object p1, Lcom/jcraft/jsch/ConfigRepository;->j6:Lcom/jcraft/jsch/ConfigRepository$Config;

    return-object p1
.end method
