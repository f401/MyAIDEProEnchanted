.class Lsun/misc/Cleaner$1;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Cleaner;->clean()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/Cleaner;

.field final val$x:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V
    .registers 3

    .line 144
    iput-object p1, p0, Lsun/misc/Cleaner$1;->this$0:Lsun/misc/Cleaner;

    iput-object p2, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .line 146
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Cleaner terminated abnormally"

    iget-object v2, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 150
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
