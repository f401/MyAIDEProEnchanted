.class public Lcom/jcraft/jsch/JSchException;
.super Ljava/lang/Exception;


# instance fields
.field private j6:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/JSchException;->j6:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/JSchException;->j6:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/JSchException;->j6:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/jcraft/jsch/JSchException;->j6:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/JSchException;->j6:Ljava/lang/Throwable;

    return-object v0
.end method
