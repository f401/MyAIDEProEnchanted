.class public final Lcom/s1243808733/android/dx/cf/attrib/AttDeprecated;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttDeprecated.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Deprecated"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    const-string v0, "Deprecated"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public byteLength()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 36
    const/4 v0, 0x6

    return v0
.end method
