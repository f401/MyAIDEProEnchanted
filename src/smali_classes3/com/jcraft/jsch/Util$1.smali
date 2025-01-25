.class Lcom/jcraft/jsch/Util$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:I

.field private final Hw:[Ljava/lang/Exception;

.field private final j6:[Ljava/net/Socket;


# direct methods
.method constructor <init>([Ljava/net/Socket;Ljava/lang/String;I[Ljava/lang/Exception;)V
    .registers 5

    iput-object p1, p0, Lcom/jcraft/jsch/Util$1;->j6:[Ljava/net/Socket;

    iput-object p2, p0, Lcom/jcraft/jsch/Util$1;->DW:Ljava/lang/String;

    iput p3, p0, Lcom/jcraft/jsch/Util$1;->FH:I

    iput-object p4, p0, Lcom/jcraft/jsch/Util$1;->Hw:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->j6:[Ljava/net/Socket;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :try_start_6
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/jcraft/jsch/Util$1;->DW:Ljava/lang/String;

    iget v5, p0, Lcom/jcraft/jsch/Util$1;->FH:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_12

    aput-object v3, v0, v1

    goto :goto_30

    :catch_12
    move-exception v0

    iget-object v3, p0, Lcom/jcraft/jsch/Util$1;->Hw:[Ljava/lang/Exception;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->j6:[Ljava/net/Socket;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2c

    :try_start_23
    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->j6:[Ljava/net/Socket;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    move-exception v0

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->j6:[Ljava/net/Socket;

    aput-object v2, v0, v1

    :goto_30
    return-void
.end method
