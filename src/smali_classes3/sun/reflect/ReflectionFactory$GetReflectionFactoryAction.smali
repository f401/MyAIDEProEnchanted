.class public final Lsun/reflect/ReflectionFactory$GetReflectionFactoryAction;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/reflect/ReflectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetReflectionFactoryAction"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-static {}, Lsun/reflect/ReflectionFactory;->getReflectionFactory()Lsun/reflect/ReflectionFactory;

    move-result-object v0

    return-object v0
.end method
