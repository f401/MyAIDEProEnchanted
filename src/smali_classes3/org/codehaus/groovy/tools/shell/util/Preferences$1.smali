.class final Lorg/codehaus/groovy/tools/shell/util/Preferences$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/prefs/PreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/tools/shell/util/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/prefs/PreferenceChangeEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verbosity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Ljava/util/prefs/PreferenceChangeEvent;->getNewValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    iget-object v0, v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->v5:Ljava/lang/String;

    :cond_16
    :try_start_16
    invoke-static {v0}, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/tools/shell/util/Preferences;->DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_2d

    :catch_1d
    move-exception v0

    invoke-virtual {p1}, Ljava/util/prefs/PreferenceChangeEvent;->getNode()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/prefs/PreferenceChangeEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/codehaus/groovy/tools/shell/util/Preferences;->DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    iget-object v1, v1, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->v5:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return-void
.end method
