.class public final Lv/c;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lv/c;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lv/c;->a:Ljava/lang/Throwable;

    return-object v0
.end method
