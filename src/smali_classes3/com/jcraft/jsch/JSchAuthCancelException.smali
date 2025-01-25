.class Lcom/jcraft/jsch/JSchAuthCancelException;
.super Lcom/jcraft/jsch/JSchException;


# instance fields
.field DW:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/jcraft/jsch/JSchException;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jcraft/jsch/JSchAuthCancelException;->DW:Ljava/lang/String;

    return-void
.end method
